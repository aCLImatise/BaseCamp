from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Biowdl_Input_Converter_V0_1_0 = CommandToolBuilder(tool="biowdl_input_converter", base_command=["biowdl-input-converter"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="The input samplesheet format - tsv, csv, json, or yaml")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output file to which the json is written. Default:\nstdout")), ToolInput(tag="in_validate", input_type=Boolean(optional=True), prefix="--validate", doc=InputDocumentation(doc="Do not generate output but only validate the")), ToolInput(tag="in_skip_file_check", input_type=Boolean(optional=True), prefix="--skip-file-check", doc=InputDocumentation(doc="Skip the checking if files in the samplesheet are")), ToolInput(tag="in_old_output_old", input_type=String(), position=0, doc=InputDocumentation(doc="--old                 Output old style JSON as used in BioWDL germline-DNA")), ToolInput(tag="in_present_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--skip-duplicate-check")), ToolInput(tag="in_checkfilemdsums_do_check", input_type=String(), position=0, doc=InputDocumentation(doc="--check-file-md5sums  Do a md5sum check for reads which have md5sums added"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output file to which the json is written. Default:\nstdout"))], container="quay.io/biocontainers/biowdl-input-converter:0.3.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biowdl_Input_Converter_V0_1_0().translate("wdl")

