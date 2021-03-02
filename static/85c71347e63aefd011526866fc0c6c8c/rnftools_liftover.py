from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Rnftools_Liftover_V0_1_0 = CommandToolBuilder(tool="rnftools_liftover", base_command=["rnftools", "liftover"], inputs=[ToolInput(tag="in_chain", input_type=File(optional=True), prefix="--chain", doc=InputDocumentation(doc="Chain liftover file for coordinates transformation.\n[no transformation]")), ToolInput(tag="in_genome_id", input_type=Int(optional=True), prefix="--genome-id", doc=InputDocumentation(doc="ID of genome to be transformed.")), ToolInput(tag="in_fa_idx", input_type=File(optional=True), prefix="--faidx", doc=InputDocumentation(doc="Fasta index of the reference sequence. [extract from\nchain file]")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="--invert", doc=InputDocumentation(doc="Invert chain file (transformation in the other\ndirection).")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="Input format (SAM/BAM/FASTQ). [autodetect]")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="Output format (SAM/BAM/FASTQ). [autodetect]")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input file to be transformed (- for standard input).")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output file to be transformed (- for standard output)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Liftover_V0_1_0().translate("wdl", allow_empty_container=True)

