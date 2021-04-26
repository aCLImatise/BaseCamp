from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Fu_16Sregion_V0_1_0 = CommandToolBuilder(tool="fu_16Sregion", base_command=["fu-16Sregion"], inputs=[ToolInput(tag="in_first_pair", input_type=String(optional=True), prefix="--first-pair", doc=InputDocumentation(doc="First sequence in pair")), ToolInput(tag="in_second_pair", input_type=String(optional=True), prefix="--second-pair", doc=InputDocumentation(doc="Second sequence in pair (can be inferred)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="FASTA file with a reference sequence, E. coli 16S by default")), ToolInput(tag="in_regions", input_type=File(optional=True), prefix="--regions", doc=InputDocumentation(doc="Regions names in JSON format, E. coli variable regions by default")), ToolInput(tag="in_pattern_r_one", input_type=Int(optional=True), prefix="--pattern-R1", doc=InputDocumentation(doc="Tag in first pairs filenames [default: auto]")), ToolInput(tag="in_pattern_r_two", input_type=Int(optional=True), prefix="--pattern-R2", doc=InputDocumentation(doc="Tag in second pairs filenames [default: auto]")), ToolInput(tag="in_pool_size", input_type=Int(optional=True), prefix="--pool-size", doc=InputDocumentation(doc="Number of sequences/pairs to process per thread [default: 20]")), ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--min-score", doc=InputDocumentation(doc="Minimum alignment score [default: 80]")), ToolInput(tag="in_max_reads", input_type=Int(optional=True), prefix="--max-reads", doc=InputDocumentation(doc="Parse up to INT reads then quit [default: 1000]")), ToolInput(tag="in_se", input_type=Boolean(optional=True), prefix="--se", doc=InputDocumentation(doc="Force single end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output"))], outputs=[], container="quay.io/biocontainers/seqfu:0.9.5--h38613fd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_16Sregion_V0_1_0().translate("wdl")

