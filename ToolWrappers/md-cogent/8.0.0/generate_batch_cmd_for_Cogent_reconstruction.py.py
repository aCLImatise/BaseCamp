from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Generate_Batch_Cmd_For_Cogent_Reconstruction_Py_V0_1_0 = CommandToolBuilder(tool="generate_batch_cmd_for_Cogent_reconstruction.py", base_command=["generate_batch_cmd_for_Cogent_reconstruction.py"], inputs=[ToolInput(tag="in_genome_fast_a_mmi", input_type=Int(optional=True), prefix="--genome_fasta_mmi", doc=InputDocumentation(doc="Optional genome fasta or mmi (ex: genome.fasta or\ngenome.mmi). If provided, Cogent output will be mapped\nto the genome using minimap2.")), ToolInput(tag="in_species_name", input_type=String(optional=True), prefix="--species_name", doc=InputDocumentation(doc="Species name (optional, only used if genome fasta/mmi\nprovided).\n"))], outputs=[], container="quay.io/biocontainers/md-cogent:8.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Batch_Cmd_For_Cogent_Reconstruction_Py_V0_1_0().translate("wdl")

