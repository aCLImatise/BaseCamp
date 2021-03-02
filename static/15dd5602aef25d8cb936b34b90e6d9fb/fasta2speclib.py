from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fasta2Speclib_V0_1_0 = CommandToolBuilder(tool="fasta2speclib", base_command=["fasta2speclib"], inputs=[ToolInput(tag="in_name_given_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name for output file(s) (if not given, derived from\ninput file)")), ToolInput(tag="in_name_configuration_defaultfastaspeclibconfigjson", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Name of configuration json file (default:\nfasta2speclib_config.json)\n"))], outputs=[ToolOutput(tag="out_name_given_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_given_file", type_hint=File()), doc=OutputDocumentation(doc="Name for output file(s) (if not given, derived from\ninput file)"))], container="quay.io/biocontainers/ms2pip:3.6.2--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Speclib_V0_1_0().translate("wdl")

