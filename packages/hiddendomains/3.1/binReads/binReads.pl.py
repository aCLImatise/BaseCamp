from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Binreads_Pl_V0_1_0 = CommandToolBuilder(tool="binReads.pl", base_command=["binReads.pl"], inputs=[ToolInput(tag="in_width_bin_default", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="The width of the bin. Default is 1000bp.")), ToolInput(tag="in_input_file_bed", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="The input file is in BED format (the default is BAM)")), ToolInput(tag="in_minmapqthe_minimum_mapq", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="MIN_MAPQ\nThe minimum MAPQ score. Default is 30.")), ToolInput(tag="in_assume_be_mouse", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="Assume all bins should be on mouse chromosomes. This is the default.")), ToolInput(tag="in_assume_be_human", input_type=Boolean(optional=True), prefix="-H", doc=InputDocumentation(doc="Assume all bins should be on human chromosomes.")), ToolInput(tag="in_bin_reads_only", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="'chr1 chr2 ...'\nBin reads only from specified chromosomes.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Binreads_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

