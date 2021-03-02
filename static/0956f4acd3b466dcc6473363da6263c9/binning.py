from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File, Float

Binning_V0_1_0 = CommandToolBuilder(tool="binning", base_command=["binning"], inputs=[ToolInput(tag="in_dm", input_type=String(optional=True), prefix="-dM", doc=InputDocumentation(doc="MAD processs (default enabled)")), ToolInput(tag="in_index_file_reads", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Index file with reads name")), ToolInput(tag="in_number_of_reads", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="number of reads")), ToolInput(tag="in_nt", input_type=Int(optional=True), prefix="-nt", doc=InputDocumentation(doc="of threads to use")), ToolInput(tag="in_lu", input_type=Int(optional=True), prefix="-lu", doc=InputDocumentation(doc="of links to cut by UP threshold")), ToolInput(tag="in_ld", input_type=Int(optional=True), prefix="-ld", doc=InputDocumentation(doc="of links to cut by Down threshold")), ToolInput(tag="in_rt", input_type=File(optional=True), prefix="-rt", doc=InputDocumentation(doc="FILE (comma delimted for several files)")), ToolInput(tag="in_size_bin", input_type=Int(optional=True), prefix="-sizeBin", doc=InputDocumentation(doc="of reads to report a bin (default 1)")), ToolInput(tag="in_to_l", input_type=Float(optional=True), prefix="-tol", doc=InputDocumentation(doc="error tolerance (default 0.5)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Binning_V0_1_0().translate("wdl", allow_empty_container=True)

