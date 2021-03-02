from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bedtools_Sort_V0_1_0 = CommandToolBuilder(tool="bedtools_sort", base_command=["bedtools", "sort"], inputs=[ToolInput(tag="in_size_a", input_type=Boolean(optional=True), prefix="-sizeA", doc=InputDocumentation(doc="Sort by feature size in ascending order.")), ToolInput(tag="in_sized", input_type=Boolean(optional=True), prefix="-sizeD", doc=InputDocumentation(doc="Sort by feature size in descending order.")), ToolInput(tag="in_chr_then_size_a", input_type=Boolean(optional=True), prefix="-chrThenSizeA", doc=InputDocumentation(doc="Sort by chrom (asc), then feature size (asc).")), ToolInput(tag="in_chr_then_sized", input_type=Boolean(optional=True), prefix="-chrThenSizeD", doc=InputDocumentation(doc="Sort by chrom (asc), then feature size (desc).")), ToolInput(tag="in_chr_then_score_a", input_type=Boolean(optional=True), prefix="-chrThenScoreA", doc=InputDocumentation(doc="Sort by chrom (asc), then score (asc).")), ToolInput(tag="in_chr_then_scored", input_type=Boolean(optional=True), prefix="-chrThenScoreD", doc=InputDocumentation(doc="Sort by chrom (asc), then score (desc).")), ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="(names.txt)  Sort according to the chromosomes declared in 'genome.txt'")), ToolInput(tag="in_fa_idx", input_type=Boolean(optional=True), prefix="-faidx", doc=InputDocumentation(doc="(names.txt)      Sort according to the chromosomes declared in 'names.txt'")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="-header", doc=InputDocumentation(doc="the header from the A file prior to results.")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

