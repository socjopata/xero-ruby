=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.3

=end

require 'time'
require 'date'

module XeroRuby
  class TaxRate
    # Name of tax rate
    attr_accessor :name

    # The tax type
    attr_accessor :tax_type

    # See TaxComponents
    attr_accessor :tax_components

    # See Status Codes
    attr_accessor :status

    # See ReportTaxTypes
    attr_accessor :report_tax_type

    # Boolean to describe if tax rate can be used for asset accounts i.e.  true,false
    attr_accessor :can_apply_to_assets

    # Boolean to describe if tax rate can be used for equity accounts i.e true,false
    attr_accessor :can_apply_to_equity

    # Boolean to describe if tax rate can be used for expense accounts  i.e. true,false
    attr_accessor :can_apply_to_expenses

    # Boolean to describe if tax rate can be used for liability accounts  i.e. true,false
    attr_accessor :can_apply_to_liabilities

    # Boolean to describe if tax rate can be used for revenue accounts i.e. true,false
    attr_accessor :can_apply_to_revenue

    # Tax Rate (decimal to 4dp) e.g 12.5000
    attr_accessor :display_tax_rate

    # Effective Tax Rate (decimal to 4dp) e.g 12.5000
    attr_accessor :effective_rate

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'tax_type' => :'TaxType',
        :'tax_components' => :'TaxComponents',
        :'status' => :'Status',
        :'report_tax_type' => :'ReportTaxType',
        :'can_apply_to_assets' => :'CanApplyToAssets',
        :'can_apply_to_equity' => :'CanApplyToEquity',
        :'can_apply_to_expenses' => :'CanApplyToExpenses',
        :'can_apply_to_liabilities' => :'CanApplyToLiabilities',
        :'can_apply_to_revenue' => :'CanApplyToRevenue',
        :'display_tax_rate' => :'DisplayTaxRate',
        :'effective_rate' => :'EffectiveRate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'tax_type' => :'String',
        :'tax_components' => :'Array<TaxComponent>',
        :'status' => :'String',
        :'report_tax_type' => :'String',
        :'can_apply_to_assets' => :'Boolean',
        :'can_apply_to_equity' => :'Boolean',
        :'can_apply_to_expenses' => :'Boolean',
        :'can_apply_to_liabilities' => :'Boolean',
        :'can_apply_to_revenue' => :'Boolean',
        :'display_tax_rate' => :'Float',
        :'effective_rate' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::TaxRate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::TaxRate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'tax_components')
        if (value = attributes[:'tax_components']).is_a?(Array)
          self.tax_components = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'report_tax_type')
        self.report_tax_type = attributes[:'report_tax_type']
      end

      if attributes.key?(:'can_apply_to_assets')
        self.can_apply_to_assets = attributes[:'can_apply_to_assets']
      end

      if attributes.key?(:'can_apply_to_equity')
        self.can_apply_to_equity = attributes[:'can_apply_to_equity']
      end

      if attributes.key?(:'can_apply_to_expenses')
        self.can_apply_to_expenses = attributes[:'can_apply_to_expenses']
      end

      if attributes.key?(:'can_apply_to_liabilities')
        self.can_apply_to_liabilities = attributes[:'can_apply_to_liabilities']
      end

      if attributes.key?(:'can_apply_to_revenue')
        self.can_apply_to_revenue = attributes[:'can_apply_to_revenue']
      end

      if attributes.key?(:'display_tax_rate')
        self.display_tax_rate = attributes[:'display_tax_rate']
      end

      if attributes.key?(:'effective_rate')
        self.effective_rate = attributes[:'effective_rate']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @report_tax_type.nil?
        invalid_properties.push('invalid value for "report_tax_type", report_tax_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "DELETED", "ARCHIVED"])
      return false unless status_validator.valid?(@status)
      return false if @report_tax_type.nil?
      report_tax_type_validator = EnumAttributeValidator.new('String', ["OUTPUT", "INPUT", "EXEMPTOUTPUT", "INPUTTAXED", "BASEXCLUDED", "EXEMPTEXPENSES", "EXEMPTINPUT", "ECOUTPUT", "ECOUTPUTSERVICES", "ECINPUT", "ECACQUISITIONS", "CAPITALSALESOUTPUT", "CAPITALEXPENSESINPUT", "MOSSSALES", "NONE", "GSTONIMPORTS", "AVALARA"])
      return false unless report_tax_type_validator.valid?(@report_tax_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "DELETED", "ARCHIVED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_tax_type Object to be assigned
    def report_tax_type=(report_tax_type)
      validator = EnumAttributeValidator.new('String', ["OUTPUT", "INPUT", "EXEMPTOUTPUT", "INPUTTAXED", "BASEXCLUDED", "EXEMPTEXPENSES", "EXEMPTINPUT", "ECOUTPUT", "ECOUTPUTSERVICES", "ECINPUT", "ECACQUISITIONS", "CAPITALSALESOUTPUT", "CAPITALEXPENSESINPUT", "MOSSSALES", "NONE", "GSTONIMPORTS", "AVALARA"])
      unless validator.valid?(report_tax_type)
        warn ArgumentError, "invalid value for \"report_tax_type\", must be one of #{validator.allowable_values}."
      end
      @report_tax_type = report_tax_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          tax_type == o.tax_type &&
          tax_components == o.tax_components &&
          status == o.status &&
          report_tax_type == o.report_tax_type &&
          can_apply_to_assets == o.can_apply_to_assets &&
          can_apply_to_equity == o.can_apply_to_equity &&
          can_apply_to_expenses == o.can_apply_to_expenses &&
          can_apply_to_liabilities == o.can_apply_to_liabilities &&
          can_apply_to_revenue == o.can_apply_to_revenue &&
          display_tax_rate == o.display_tax_rate &&
          effective_rate == o.effective_rate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, tax_type, tax_components, status, report_tax_type, can_apply_to_assets, can_apply_to_equity, can_apply_to_expenses, can_apply_to_liabilities, can_apply_to_revenue, display_tax_rate, effective_rate].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
