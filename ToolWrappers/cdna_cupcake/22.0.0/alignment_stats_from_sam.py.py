from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Alignment_Stats_From_Sam_Py_V0_1_0 = CommandToolBuilder(tool="alignment_stats_from_sam.py", base_command=["alignment_stats_from_sam.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input fasta or fastq.")), ToolInput(tag="in_sam_filename", input_type=File(optional=True), prefix="--sam_filename", doc=InputDocumentation(doc="Aligned SAM filename.")), ToolInput(tag="in_genome_filename", input_type=File(optional=True), prefix="--genome_filename", doc=InputDocumentation(doc="Genome fasta.")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="Output prefix.")), ToolInput(tag="in_gff", input_type=String(optional=True), prefix="--gff", doc=InputDocumentation(doc="Annotation GFF (optional)."))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignment_Stats_From_Sam_Py_V0_1_0().translate("wdl")

