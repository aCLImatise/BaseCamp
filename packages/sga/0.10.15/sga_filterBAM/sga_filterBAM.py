from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Sga_Filterbam_V0_1_0 = CommandToolBuilder(tool="sga_filterBAM", base_command=["sga", "filterBAM"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_as_qg", input_type=File(optional=True), prefix="--asqg", doc=InputDocumentation(doc="load an asqg file and filter pairs that are shorter than --max-distance")), ToolInput(tag="in_max_distance", input_type=Int(optional=True), prefix="--max-distance", doc=InputDocumentation(doc="search the graph for a path completing the mate-pair fragment. If the path is less than LEN\nthen the pair will be discarded.")), ToolInput(tag="in_error_rate", input_type=String(optional=True), prefix="--error-rate", doc=InputDocumentation(doc="filter out pairs where one read has an error rate higher than F (default: no filter)")), ToolInput(tag="in_min_quality", input_type=Int(optional=True), prefix="--min-quality", doc=InputDocumentation(doc="filter out pairs where one read has mapping quality less than F (default: 10)")), ToolInput(tag="in_out_bam", input_type=File(optional=True), prefix="--out-bam", doc=InputDocumentation(doc="write the filtered reads to FILE")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="load the FM-index with prefix STR")), ToolInput(tag="in_max_km_er_depth", input_type=Int(optional=True), prefix="--max-kmer-depth", doc=InputDocumentation(doc="filter out pairs that contain a kmer that has been seen in the FM-index more than N times")), ToolInput(tag="in_mate_contamination", input_type=Boolean(optional=True), prefix="--mate-contamination", doc=InputDocumentation(doc="filter out pairs aligning with FR orientation, which may be contiminates in a mate pair library"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Filterbam_V0_1_0().translate("wdl", allow_empty_container=True)

