from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String

Clipcontext_Mtf_V0_1_0 = CommandToolBuilder(tool="clipcontext_mtf", base_command=["clipcontext", "mtf"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Genomic annotations (hg38) GTF file (.gtf or .gtf.gz).\nRequired for --in type (2) or (3)")), ToolInput(tag="in_gen", input_type=File(optional=True), prefix="--gen", doc=InputDocumentation(doc="Genomic sequences (hg38) .2bit file. Required for --in type\n(2) or (3)")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output results folder, to store motif hit regions in BED")), ToolInput(tag="in_data_id", input_type=Int(optional=True), prefix="--data-id", doc=InputDocumentation(doc="Data ID (column 1) for --stats-out output table to store\nmotif search results (requires --stats-out to be set)")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="Three different inputs possible: (1) output folder of\nclipcontext g2t or clipcontext t2g with genomic and\ntranscript context sequence sets in which to look for given\n--motif. (2) BED file (genomic or transcript regions) in\nwhich to look for given --motif. (3) Transcript list file,\nto search for --motif in the respective transcript\nsequences. Note that (2)+(3) need --gtf and --gen")), ToolInput(tag="in_motif", input_type=String(optional=True), prefix="--motif", doc=InputDocumentation(doc="Motif or regular expression (RNA letters!) to search for in")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="--stats-out str  Output table to store motif search results in (for --in"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output results folder, to store motif hit regions in BED"))], container="quay.io/biocontainers/clipcontext:0.7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clipcontext_Mtf_V0_1_0().translate("wdl")

