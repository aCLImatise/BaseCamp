from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Comet_V0_1_0 = CommandToolBuilder(tool="comet", base_command=["comet"], inputs=[ToolInput(tag="in_print_cometparams_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="to print out a comet.params file (named comet.params.new)")), ToolInput(tag="in_params_specify_parameters", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="<params> to specify an alternate parameters file (default comet.params)")), ToolInput(tag="in_name_specify_name", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="<name>   to specify an alternate output base name; valid only with one input file")), ToolInput(tag="in_dbase_specify_database", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="<dbase>  to specify a sequence database, overriding entry in parameters file")), ToolInput(tag="in_num_specify_firststart", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="<num>    to specify the first/start scan to search, overriding entry in parameters file")), ToolInput(tag="in_num_specify_lastend", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="<num>    to specify the last/end scan to search, overriding entry in parameters file\n(-L option is required if -F option is used)")), ToolInput(tag="in_create_peptide_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="create peptide index file only (specify .idx file as database for index search)"))], outputs=[ToolOutput(tag="out_print_cometparams_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_print_cometparams_file", type_hint=File()), doc=OutputDocumentation(doc="to print out a comet.params file (named comet.params.new)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comet_V0_1_0().translate("wdl", allow_empty_container=True)

