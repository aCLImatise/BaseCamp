from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Bamtowig_Py_V0_1_0 = CommandToolBuilder(tool="bamToWig.py", base_command=["bamToWig.py"], inputs=[ToolInput(tag="in_bam_file", input_type=File(optional=True), prefix="--bamFile", doc=InputDocumentation(doc="Input file in Bam format.")), ToolInput(tag="in_genome_file", input_type=File(optional=True), prefix="--genomeFile", doc=InputDocumentation(doc="Input genome file in FASTA format.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outFile", doc=InputDocumentation(doc="Output file in wiggle format.")), ToolInput(tag="in_sam_tools_path", input_type=File(optional=True), prefix="--SAMTOOLS_PATH", doc=InputDocumentation(doc="Path to samtools executable, e.g. '/usr/bin'.\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file in wiggle format."))], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtowig_Py_V0_1_0().translate("wdl")

