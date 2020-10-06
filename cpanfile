requires "strict"   => "0";
requires "warnings" => "0";
requires "Exporter" => "0";
requires "Carp"     => "0";
requires "Digest::MD5" => "0";

on 'test' => sub {
    requires 'Test::More' => '0';
};

