from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Pypgatk_Cli_Threeframe_Translation_V0_1_0 = CommandToolBuilder(tool="pypgatk_cli_threeframe_translation", base_command=["pypgatk_cli", "threeframe-translation"], inputs=[ToolInput(tag="in_config_file", input_type=String(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Configuration to perform conversion between\nENSEMBL Files")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input_fasta", doc=InputDocumentation(doc="input_fasta file to perform the translation")), ToolInput(tag="in_translation_table", input_type=Int(optional=True), prefix="--translation_table", doc=InputDocumentation(doc="Translation table default value 1")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output File"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output File"))], container="quay.io/biocontainers/pypgatk:0.0.16--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypgatk_Cli_Threeframe_Translation_V0_1_0().translate("wdl")

