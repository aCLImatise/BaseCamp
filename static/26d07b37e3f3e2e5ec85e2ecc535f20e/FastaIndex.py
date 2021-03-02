from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Fastaindex_V0_1_0 = CommandToolBuilder(tool="FastaIndex", base_command=["FastaIndex"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="FASTA file(s)")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="output stream    [stdout]")), ToolInput(tag="in_contigs_contig_regions", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[REGIONS [REGIONS ...]], --regions [REGIONS [REGIONS ...]]\ncontig(s) or contig region(s) to output (returns reverse complement if end larger than start)")), ToolInput(tag="in_calculate_nxx_exit", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc="calculate NXX and exit ie N50")), ToolInput(tag="in_calculate_lxx_exit", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="calculate LXX and exit ie L50")), ToolInput(tag="in_stats", input_type=Boolean(optional=True), prefix="--stats", doc=InputDocumentation(doc="return FastA stats aka fasta_stats"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaindex_V0_1_0().translate("wdl", allow_empty_container=True)

