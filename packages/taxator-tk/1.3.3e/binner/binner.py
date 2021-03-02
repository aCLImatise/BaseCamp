from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Binner_V0_1_0 = CommandToolBuilder(tool="binner", base_command=["binner"], inputs=[ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="show citation info")), ToolInput(tag="in_advanced_options", input_type=Boolean(optional=True), prefix="--advanced-options", doc=InputDocumentation(doc="show advanced program options")), ToolInput(tag="in_arg_sample_identifier", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --sample-identifier ] arg        unique sample identifier")), ToolInput(tag="in_arg_minimum_number", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --sequence-min-support ] arg (=50)\nminimum number of positions supporting\na taxonomic signal for any single\nsequence. If not reached, a fall-back\non a more robust algorthm will be used")), ToolInput(tag="in_arg_combined_fraction", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --signal-majority ] arg (=0.699999988)\nminimum combined fraction of support\nfor any single sequence (> 0.5 to be\nstable)")), ToolInput(tag="in_arg_minimum_required", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --identity-constrain ] arg       minimum required identity for this rank\n(e.g. -i species:0.8 -i genus:0.7)")), ToolInput(tag="in_arg_arbitrary_number", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --files ] arg                    arbitrary number of prediction files\n(replaces standard input, use '-' to\nspecify a combination of both)")), ToolInput(tag="in_arg_binninglog_specify", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --logfile ] arg (=binning.log)   specify name of file for logging\n(appending lines)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Binner_V0_1_0().translate("wdl", allow_empty_container=True)

