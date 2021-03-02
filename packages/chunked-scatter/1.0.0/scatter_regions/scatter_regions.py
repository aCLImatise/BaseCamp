from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Scatter_Regions_V0_1_0 = CommandToolBuilder(tool="scatter_regions", base_command=["scatter-regions"], inputs=[ToolInput(tag="in_prefix", input_type=Int(optional=True), prefix="--prefix", doc=InputDocumentation(doc="The prefix of the ouput files. Output will be named\nlike: <PREFIX><N>.bed, in which N is an incrementing\nnumber. Default 'scatter-'.")), ToolInput(tag="in_split_contigs", input_type=Boolean(optional=True), prefix="--split-contigs", doc=InputDocumentation(doc="If set, contigs are allowed to be split up over\nmultiple files.")), ToolInput(tag="in_print_paths", input_type=Boolean(optional=True), prefix="--print-paths", doc=InputDocumentation(doc="If set prints paths of the output files to STDOUT.\nThis makes the program usable in scripts and\nworfklows.")), ToolInput(tag="in_scatter_size", input_type=Int(optional=True), prefix="--scatter-size", doc=InputDocumentation(doc="The maximum size for the regions over which to\nscatter. If contigs are not split, and a contig is\nbigger than the maximum size, the contig will be\nplaced in its own file. Default: 1000000000.\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="The input file. The format is detected by the\nextension. Supported extensions are: '.bed', '.dict',\n'.fai', '.vcf', '.vcf.gz', '.bcf'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scatter_Regions_V0_1_0().translate("wdl", allow_empty_container=True)

