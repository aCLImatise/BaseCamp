from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, Int

Sanitizemepaired_Cli_Py_V0_1_0 = CommandToolBuilder(tool="SanitizeMePaired_CLI.py", base_command=["SanitizeMePaired_CLI.py"], inputs=[ToolInput(tag="in_input_folder", input_type=Directory(optional=True), prefix="--InputFolder", doc=InputDocumentation(doc="Folder containing paired fq, fq.gz, fastq, and\nfastq.gz files. Program will recursively find paired\nreads")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--Reference", doc=InputDocumentation(doc="Host Reference fasta or fasta.gz file")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--OutputFolder", doc=InputDocumentation(doc="Output Folder. Default is\n~/dehost_output/dehost_2020-09-09")), ToolInput(tag="in_large_reference", input_type=Boolean(optional=True), prefix="--LargeReference", doc=InputDocumentation(doc="Use this option if your reference file is greater than\n4 Gigabases")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. More is faster if your computer\nsupports it\n"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Output Folder. Default is\n~/dehost_output/dehost_2020-09-09"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sanitizemepaired_Cli_Py_V0_1_0().translate("wdl", allow_empty_container=True)

