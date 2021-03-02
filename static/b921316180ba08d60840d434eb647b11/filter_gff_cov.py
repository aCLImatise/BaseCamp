from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float, String

Filter_Gff_Cov_V0_1_0 = CommandToolBuilder(tool="filter_gff_cov", base_command=["filter-gff", "cov"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference FASTA file for the GFF  [required]")), ToolInput(tag="in_strand_specific", input_type=Boolean(optional=True), prefix="--strand-specific", doc=InputDocumentation(doc="If the coverage must be calculated on each strand")), ToolInput(tag="in_sorted", input_type=Boolean(optional=True), prefix="--sorted", doc=InputDocumentation(doc="Assumes the GFF to be correctly sorted")), ToolInput(tag="in_min_coverage", input_type=Float(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum coverage for the contig/strand")), ToolInput(tag="in_rename", input_type=Boolean(optional=True), prefix="--rename", doc=InputDocumentation(doc="Emulates BLAST in reading the FASTA file (keeps\nonly the header before the first space)")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Gff_Cov_V0_1_0().translate("wdl", allow_empty_container=True)

