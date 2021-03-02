from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Anvi_Script_Gen_Pseudo_Paired_Reads_From_Fastq_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_pseudo_paired_reads_from_fastq", base_command=["anvi-script-gen-pseudo-paired-reads-from-fastq"], inputs=[ToolInput(tag="in_output_file_prefix", input_type=File(optional=True), prefix="--output-file-prefix", doc=InputDocumentation(doc="If you want final FASTQs with the format\nmyfastq_1.fastq and myfastq_2.fastq, then this\nparameter should be set to myfastq (default: None)"))], outputs=[ToolOutput(tag="out_output_file_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_prefix", type_hint=File()), doc=OutputDocumentation(doc="If you want final FASTQs with the format\nmyfastq_1.fastq and myfastq_2.fastq, then this\nparameter should be set to myfastq (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Pseudo_Paired_Reads_From_Fastq_V0_1_0().translate("wdl")

