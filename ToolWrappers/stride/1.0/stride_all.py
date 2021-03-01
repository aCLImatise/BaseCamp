from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Stride_All_V0_1_0 = CommandToolBuilder(tool="stride_all", base_command=["stride", "all"], inputs=[ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="median read length (if there are multiple libraries, set to the max read length)")), ToolInput(tag="in_insert_size", input_type=Int(optional=True), prefix="--insert-size", doc=InputDocumentation(doc="median insert size (if there are multiple libraries, set to the max insert size)")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="number of threads (default: 16)")), ToolInput(tag="in_pe_mode", input_type=Int(optional=True), prefix="--pe-mode", doc=InputDocumentation(doc="1 - paired reads are separated with the first read in READS1 and the second\nread in READS2 of the same library (default)\n2 - paired reads are interleaved within a single file of the same library.")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="length of kmer (default: 31)")), ToolInput(tag="in_km_er_threshold", input_type=Int(optional=True), prefix="--kmer-threshold", doc=InputDocumentation(doc="kmer frequency cutoff (default: 3)")), ToolInput(tag="in_min_overlap", input_type=Int(optional=True), prefix="--min-overlap", doc=InputDocumentation(doc="minimum reliable overlap length (default: read length * 0.8)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stride_All_V0_1_0().translate("wdl", allow_empty_container=True)

