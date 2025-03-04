#! /usr/bin/env perl
# Copyright 2016 The OpenSSL Project Authors. All Rights Reserved.
#
# Licensed under the OpenSSL license (the "License").  You may not use
# this file except in compliance with the License.  You can obtain a copy
# in the file LICENSE in the source distribution or at
# https://www.openssl.org/source/license.html

use OpenSSL::Test;
use OpenSSL::Test::Utils;

my $test_name = "tls13secrets";
setup($test_name);

plan skip_all => "$test_name is not supported in this build"
    if disabled("tls1_3") || disabled("shared") || !disabled("ktls");

plan tests => 1;

ok(run(test(["tls13secretstest"])), "running tls13secretstest");
