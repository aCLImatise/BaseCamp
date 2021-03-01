from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Knot_V0_1_0 = CommandToolBuilder(tool="knot", base_command=["knot"], inputs=[ToolInput(tag="in_contigs", input_type=File(optional=True), prefix="--contigs", doc=InputDocumentation(doc="fasta file than contains contigs")), ToolInput(tag="in_contigs_graph", input_type=String(optional=True), prefix="--contigs_graph", doc=InputDocumentation(doc="contigs graph")), ToolInput(tag="in_raw_reads", input_type=String(optional=True), prefix="--raw-reads", doc=InputDocumentation(doc="read used for assembly")), ToolInput(tag="in_correct_reads", input_type=String(optional=True), prefix="--correct-reads", doc=InputDocumentation(doc="read used for assembly")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output prefix")), ToolInput(tag="in_search_mode", input_type=String(optional=True), prefix="--search-mode", doc=InputDocumentation(doc="what path search optimize, number of base or number of\nnode")), ToolInput(tag="in_contig_min_length", input_type=Int(optional=True), prefix="--contig-min-length", doc=InputDocumentation(doc="contig with size lower this parameter are ignored")), ToolInput(tag="in_read_type", input_type=String(optional=True), prefix="--read-type", doc=InputDocumentation(doc="type of input read, default pb")), ToolInput(tag="in_self_lookup", input_type=Boolean(optional=True), prefix="--self-lookup", doc=InputDocumentation(doc="if it set knot search path between extremity of same")), ToolInput(tag="in_contig", input_type=String(), position=0, doc=InputDocumentation(doc="--help-all            show knot help and snakemake help"))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_V0_1_0().translate("wdl")

