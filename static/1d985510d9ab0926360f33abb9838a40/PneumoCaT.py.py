from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, File, Boolean

Pneumocat_Py_V0_1_0 = CommandToolBuilder(tool="PneumoCaT.py", base_command=["PneumoCaT.py"], inputs=[ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="--input_directory", doc=InputDocumentation(doc="please provide the path to the directory contains the\nfastq files [REQUIRED - OPTION 1]")), ToolInput(tag="in_fast_q_one", input_type=Int(optional=True), prefix="--fastq_1", doc=InputDocumentation(doc="Fastq file pair 1 [REQUIRED - OPTION 2]")), ToolInput(tag="in_fast_q_two", input_type=Int(optional=True), prefix="--fastq_2", doc=InputDocumentation(doc="Fastq file pair 2 [REQUIRED - OPTION 2]")), ToolInput(tag="in_variant_database", input_type=Directory(optional=True), prefix="--variant_database", doc=InputDocumentation(doc="variant database [OPTIONAL]; defaults to\nstreptococcus-pneumoniae-ctvdb in the github directory")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="please provide an output directory [OPTIONAL]; if none\nprovided a pneumo_capsular_typing folder will be\ncreated in the directory containing the fastq files")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use [OPTIONAL]; default=4")), ToolInput(tag="in_bowtie", input_type=File(optional=True), prefix="--bowtie", doc=InputDocumentation(doc="please provide the path for bowtie2 [OPTIONAL];\ndefaults to bowtie2")), ToolInput(tag="in_sam_tools", input_type=File(optional=True), prefix="--samtools", doc=InputDocumentation(doc="please provide the path for samtools [OPTIONAL];\ndefaults to samtools")), ToolInput(tag="in_cleanup", input_type=Boolean(optional=True), prefix="--cleanup", doc=InputDocumentation(doc="if used, all bam files generated will be removed upon\ncompletion\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="please provide an output directory [OPTIONAL]; if none\nprovided a pneumo_capsular_typing folder will be\ncreated in the directory containing the fastq files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pneumocat_Py_V0_1_0().translate("wdl", allow_empty_container=True)

