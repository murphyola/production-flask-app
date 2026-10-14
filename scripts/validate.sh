
#!/bin/bash
set -e

echo "DOP-C02 rollback test: intentionally failing ValidateService hook."
exit 1
