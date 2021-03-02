from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Covtobed_V0_1_0 = CommandToolBuilder(tool="covtobed", base_command=["covtobed"], inputs=[ToolInput(tag="in_physical_coverage", input_type=Boolean(optional=True), prefix="--physical-coverage", doc=InputDocumentation(doc="compute physical coverage (needs paired alignments in input)")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min-mapq", doc=InputDocumentation(doc="skip alignments whose mapping quality is less than MINQ\n(default: 0)")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--min-cov", doc=InputDocumentation(doc="print BED feature only if the coverage is bigger than\n(or equal to) MINCOV (default: 0)")), ToolInput(tag="in_max_cov", input_type=Int(optional=True), prefix="--max-cov", doc=InputDocumentation(doc="print BED feature only if the coverage is lower than\nMAXCOV (default: 100000)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="print BED feature only if its length is bigger (or equal\nto) than MINLELN (default: 1)")), ToolInput(tag="in_min_ctg_len", input_type=Int(optional=True), prefix="--min-ctg-len", doc=InputDocumentation(doc="Skip reference sequences (contigs) shorter than this value")), ToolInput(tag="in_discard_invalid_alignments", input_type=Boolean(optional=True), prefix="--discard-invalid-alignments", doc=InputDocumentation(doc="skip duplicates, failed QC, and non primary alignment,\nminq>0 (or user-defined if higher) (default: 0)")), ToolInput(tag="in_output_strands", input_type=Boolean(optional=True), prefix="--output-strands", doc=InputDocumentation(doc="output coverage and stats separately for each strand")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="output format")), ToolInput(tag="in_bam", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/covtobed:1.2.0--h4893569_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Covtobed_V0_1_0().translate("wdl")

