#!/bin/sh

scp -r $@.chunked marko@coursedex.com:/var/www/coursedex.com/$@/
