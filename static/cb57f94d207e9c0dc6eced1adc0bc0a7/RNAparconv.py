from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Rnaparconv_V0_1_0 = CommandToolBuilder(tool="RNAparconv", base_command=["RNAparconv"], inputs=[ToolInput(tag="in_full_help", input_type=Boolean(optional=True), prefix="--full-help", doc=InputDocumentation(doc="Print help, including hidden options, and exit")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specify an output file name. If argument is missing\nthe converted energy parameters are printed to\n'stdout'.")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Specify an input file name. If argument is missing\nthe energy parameter input can be supplied via\n'stdin'.")), ToolInput(tag="in_vanilla", input_type=Boolean(optional=True), prefix="--vanilla", doc=InputDocumentation(doc="Print just as much as needed to represent the given\nenergy parameters data set.\nThis option overrides all other output settings!\n(default=off)")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="--dump", doc=InputDocumentation(doc="Just dump Vienna 1.8.4 energy parameters in format\nused since 2.0.\nThis option skips any energy parameter input!\n(default=off)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Print just energy parameters and appropriate comment\nlines but suppress all other output\n(default=off)")), ToolInput(tag="in_input_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Specify an output file name. If argument is missing\nthe converted energy parameters are printed to\n'stdout'.")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaparconv_V0_1_0().translate("wdl")

