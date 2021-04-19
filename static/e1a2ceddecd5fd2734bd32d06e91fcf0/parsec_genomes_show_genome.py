from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Parsec_Genomes_Show_Genome_V0_1_0 = CommandToolBuilder(tool="parsec_genomes_show_genome", base_command=["parsec", "genomes", "show_genome"], inputs=[ToolInput(tag="in_num", input_type=Int(optional=True), prefix="--num", doc=InputDocumentation(doc="num")), ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="--chrom", doc=InputDocumentation(doc="chrom")), ToolInput(tag="in_low", input_type=String(optional=True), prefix="--low", doc=InputDocumentation(doc="low")), ToolInput(tag="in_high", input_type=String(optional=True), prefix="--high", doc=InputDocumentation(doc="high")), ToolInput(tag="in_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Genomes_Show_Genome_V0_1_0().translate("wdl")

