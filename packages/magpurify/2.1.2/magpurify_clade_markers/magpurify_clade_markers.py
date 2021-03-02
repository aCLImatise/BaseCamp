from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Int

Magpurify_Clade_Markers_V0_1_0 = CommandToolBuilder(tool="magpurify_clade_markers", base_command=["magpurify", "clade-markers"], inputs=[ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="Path to reference database. By default, the MAGPURIFY\nenvironmental variable is used (default: None)")), ToolInput(tag="in_exclude_clades", input_type=Array(t=String(), optional=True), prefix="--exclude_clades", doc=InputDocumentation(doc="List of clades to exclude (ex: s__Variovorax_sp_CF313)\n(default: None)")), ToolInput(tag="in_min_bin_fract", input_type=Int(optional=True), prefix="--min_bin_fract", doc=InputDocumentation(doc="Min fraction of bin length supported by contigs that\nagree with consensus taxonomy (default: 0.6)")), ToolInput(tag="in_min_contig_fract", input_type=Int(optional=True), prefix="--min_contig_fract", doc=InputDocumentation(doc="Min fraction of classified contig length that agree\nwith consensus taxonomy (default: 0.75)")), ToolInput(tag="in_min_gene_fract", input_type=Int(optional=True), prefix="--min_gene_fract", doc=InputDocumentation(doc="Min fraction of classified genes that agree with\nconsensus taxonomy (default: 0.0)")), ToolInput(tag="in_min_genes", input_type=Int(optional=True), prefix="--min_genes", doc=InputDocumentation(doc="Min number of genes that agree with consensus taxonomy\n(default=rank-specific-cutoffs) (default: None)")), ToolInput(tag="in_lowest_rank", input_type=String(optional=True), prefix="--lowest_rank", doc=InputDocumentation(doc="Lowest rank for bin classification (default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPUs to use (default: 1)")), ToolInput(tag="in_fna", input_type=String(), position=0, doc=InputDocumentation(doc="Path to input genome in FASTA format")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory to store results and intermediate")), ToolInput(tag="in_files", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Magpurify_Clade_Markers_V0_1_0().translate("wdl", allow_empty_container=True)

