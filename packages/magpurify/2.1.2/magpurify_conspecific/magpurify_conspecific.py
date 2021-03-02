from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Array, String

Magpurify_Conspecific_V0_1_0 = CommandToolBuilder(tool="magpurify_conspecific", base_command=["magpurify", "conspecific"], inputs=[ToolInput(tag="in_mash_dist", input_type=Float(optional=True), prefix="--mash-dist", doc=InputDocumentation(doc="Mash distance to reference genomes (default: 0.05)")), ToolInput(tag="in_max_genomes", input_type=Int(optional=True), prefix="--max-genomes", doc=InputDocumentation(doc="Max number of genomes to use (default: 25)")), ToolInput(tag="in_min_genomes", input_type=Int(optional=True), prefix="--min-genomes", doc=InputDocumentation(doc="Min number of genomes to use (default: 1)")), ToolInput(tag="in_contig_aln", input_type=Float(optional=True), prefix="--contig-aln", doc=InputDocumentation(doc="Minimum fraction of contig aligned to reference\n(default: 0.5)")), ToolInput(tag="in_contig_pid", input_type=Float(optional=True), prefix="--contig-pid", doc=InputDocumentation(doc="Minimum percent identity of contig aligned to\nreference (default: 95.0)")), ToolInput(tag="in_hit_rate", input_type=Float(optional=True), prefix="--hit-rate", doc=InputDocumentation(doc="Hit rate for flagging contigs (default: 0.0)")), ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="List of references to exclude (default: )")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPUs to use (default: 1)")), ToolInput(tag="in_fna", input_type=String(), position=0, doc=InputDocumentation(doc="Path to input genome in FASTA format")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory to store results and intermediate")), ToolInput(tag="in_files", input_type=String(), position=2, doc=InputDocumentation(doc="mash_sketch           Path to Mash sketch of reference genomes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Magpurify_Conspecific_V0_1_0().translate("wdl", allow_empty_container=True)

