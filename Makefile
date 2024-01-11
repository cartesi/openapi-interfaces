# Copyright 2021 Cartesi Pte. Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use
# this file except in compliance with the License. You may obtain a copy of the
# License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

SWAGGER_CODEGEN_VERSION := 3.0.42
SWAGGER_CODEGEN_URL := https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/$(SWAGGER_CODEGEN_VERSION)/swagger-codegen-cli-$(SWAGGER_CODEGEN_VERSION).jar
SWAGGER_CODEGEN := swagger-codegen-cli.jar

.PHONY: all

DOCS := docs/rollup

all: $(DOCS)

$(SWAGGER_CODEGEN):
	wget $(SWAGGER_CODEGEN_URL) -O $@

docs/%: %.yaml $(SWAGGER_CODEGEN)
	rm -rf $@
	java -jar $(SWAGGER_CODEGEN) generate -l html2 -i $< -o $@

clean:
	rm -rf docs/


distclean: clean
	rm $(SWAGGER_CODEGEN)
