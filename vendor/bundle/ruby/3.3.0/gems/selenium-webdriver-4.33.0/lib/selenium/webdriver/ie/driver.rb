# frozen_string_literal: true

# Licensed to the Software Freedom Conservancy (SFC) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The SFC licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

module Selenium
  module WebDriver
    module IE
      #
      # Driver implementation for Internet Explorer supporting
      # both OSS and W3C dialects of JSON wire protocol.
      # @api private
      #

      class Driver < WebDriver::Driver
        EXTENSIONS = [].freeze

        include LocalDriver

        def initialize(options: nil, service: nil, url: nil, **)
          caps, url = initialize_local_driver(options, service, url)
          super(caps: caps, url: url, **)
        end

        def browser
          :internet_explorer
        end
      end # Driver
    end # IE
  end # WebDriver
end # Selenium
