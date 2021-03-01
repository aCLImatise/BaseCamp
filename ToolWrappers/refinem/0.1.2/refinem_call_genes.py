from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean, String

Refinem_Call_Genes_V0_1_0 = CommandToolBuilder(tool="refinem_call_genes", base_command=["refinem", "call_genes"], inputs=[ToolInput(tag="in_unbinned_file", input_type=File(optional=True), prefix="--unbinned_file", doc=InputDocumentation(doc="call genes on unbinned scaffolds")), ToolInput(tag="in_genome_ext", input_type=Directory(optional=True), prefix="--genome_ext", doc=InputDocumentation(doc="extension of genomes (other files in directory are\nignored) (default: fna)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of CPUs to use (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger")), ToolInput(tag="in_genome_nt_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing nucleotide scaffolds for each")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc="output_dir            output directory"))], outputs=[], container="quay.io/biocontainers/refinem:0.1.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refinem_Call_Genes_V0_1_0().translate("wdl")

