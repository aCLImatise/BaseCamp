from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Chunked_Scatter_V0_1_0 = CommandToolBuilder(tool="chunked_scatter", base_command=["chunked-scatter"], inputs=[ToolInput(tag="in_prefix", input_type=Int(optional=True), prefix="--prefix", doc=InputDocumentation(doc="The prefix of the ouput files. Output will be named\nlike: <PREFIX><N>.bed, in which N is an incrementing\nnumber. Default 'scatter-'.")), ToolInput(tag="in_split_contigs", input_type=Boolean(optional=True), prefix="--split-contigs", doc=InputDocumentation(doc="If set, contigs are allowed to be split up over\nmultiple files.")), ToolInput(tag="in_print_paths", input_type=Boolean(optional=True), prefix="--print-paths", doc=InputDocumentation(doc="If set prints paths of the output files to STDOUT.\nThis makes the program usable in scripts and\nworfklows.")), ToolInput(tag="in_chunk_size", input_type=Int(optional=True), prefix="--chunk-size", doc=InputDocumentation(doc="The size of the chunks. The first chunk in a region or\ncontig will be exactly length SIZE, subsequent chunks\nwill SIZE + OVERLAP and the final chunk may be\nanywhere from 0.5 to 1.5 times SIZE plus overlap. If a\nregion (or contig) is smaller than SIZE the original\nregions will be returned. Defaults to 1e6")), ToolInput(tag="in_minimum_bp_per_file", input_type=File(optional=True), prefix="--minimum-bp-per-file", doc=InputDocumentation(doc="The minimum number of bases represented within a\nsingle output bed file. If an input contig or region\nis smaller than this MINIMUM_BP_PER_FILE, then the\nnext contigs/regions will be placed in the same file\nuntill this minimum is met. Defaults to 45e6.")), ToolInput(tag="in_overlap", input_type=Int(optional=True), prefix="--overlap", doc=InputDocumentation(doc="The number of bases which each chunk should overlap\nwith the preceding one. Defaults to 150.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chunked_Scatter_V0_1_0().translate("wdl", allow_empty_container=True)

