echo '(function(){' > tmp
echo "var moment = require('moment');" >> tmp
cat ./chrono.js >> tmp
cat ./timezone.js >> tmp
cat ./parsers/ParseResult.js >> tmp
cat ./parsers/Parser.js >> tmp
cat ./parsers/IntegratedParsing.js >> tmp
cat ./parsers/EN/* >> tmp
cat ./refiners/IntegratedRefinement.js >> tmp
cat ./refiners/ALL/* >> tmp
echo '})()' >> tmp

uglifyjs -o ./chrono.min.js < tmp
