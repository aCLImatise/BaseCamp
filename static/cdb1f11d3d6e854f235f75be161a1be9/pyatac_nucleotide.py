from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Pyatac_Nucleotide_V0_1_0 = CommandToolBuilder(tool="pyatac_nucleotide", base_command=["pyatac", "nucleotide"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Accepts fasta file")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Positions around which to get nucleotide frequencies")), ToolInput(tag="in_dinucleotide", input_type=Boolean(optional=True), prefix="--dinucleotide", doc=InputDocumentation(doc="Compute dinucleotide frequencies instead of single")), ToolInput(tag="in_down", input_type=Int(optional=True), prefix="--down", doc=InputDocumentation(doc="Bases downstream of site to get frequencies for")), ToolInput(tag="in_strand", input_type=Int(optional=True), prefix="--strand", doc=InputDocumentation(doc="Column in bedfile with strand info (1-based)")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Basename for output")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="number of cores to use")), ToolInput(tag="in_norm", input_type=Boolean(optional=True), prefix="--norm", doc=InputDocumentation(doc="Normalize by background frequencies")), ToolInput(tag="in_nucleotide", input_type=String(), position=0, doc=InputDocumentation(doc="--up int              Bases upstream of site to get frequencies for"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyatac_Nucleotide_V0_1_0().translate("wdl", allow_empty_container=True)

