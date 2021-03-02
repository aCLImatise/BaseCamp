from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Falconc_Ipa2_Construct_Config_V0_1_0 = CommandToolBuilder(tool="falconc_ipa2_construct_config", base_command=["falconc", "ipa2-construct-config"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__outfn_string", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-fn=  string  REQUIRED  Output file.")), ToolInput(tag="in_out_fmt", input_type=File(optional=True), prefix="--out-fmt", doc=InputDocumentation(doc="=      string  'json'    Output format of the config file. (json or\nbash)")), ToolInput(tag="in__infn_string", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-fn=   string  '-'       set in_fn")), ToolInput(tag="in_no_sort", input_type=Boolean(optional=True), prefix="--no-sort", doc=InputDocumentation(doc="bool    false     set no_sort"))], outputs=[ToolOutput(tag="out__outfn_string", output_type=File(optional=True), selector=InputSelector(input_to_select="in__outfn_string", type_hint=File()), doc=OutputDocumentation(doc="=, --out-fn=  string  REQUIRED  Output file.")), ToolOutput(tag="out_out_fmt", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_fmt", type_hint=File()), doc=OutputDocumentation(doc="=      string  'json'    Output format of the config file. (json or\nbash)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Ipa2_Construct_Config_V0_1_0().translate("wdl", allow_empty_container=True)

