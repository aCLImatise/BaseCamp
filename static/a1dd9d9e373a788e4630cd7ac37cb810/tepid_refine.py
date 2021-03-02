from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Tepid_Refine_V0_1_0 = CommandToolBuilder(tool="tepid_refine", base_command=["tepid-refine"], inputs=[ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep all intermediate files")), ToolInput(tag="in_insertions", input_type=File(optional=True), prefix="--insertions", doc=InputDocumentation(doc="File containing collapsed TE insertions for all\nsamples in population")), ToolInput(tag="in_deletions", input_type=File(optional=True), prefix="--deletions", doc=InputDocumentation(doc="File containing collapsed TE deletions for all samples\nin population")), ToolInput(tag="in_proc", input_type=Int(optional=True), prefix="--proc", doc=InputDocumentation(doc="number of processors")), ToolInput(tag="in_te", input_type=String(optional=True), prefix="--te", doc=InputDocumentation(doc="TE annotation bedfile")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="sample name")), ToolInput(tag="in_conc", input_type=File(optional=True), prefix="--conc", doc=InputDocumentation(doc="bam file from bowtie2")), ToolInput(tag="in_split", input_type=File(optional=True), prefix="--split", doc=InputDocumentation(doc="split reads bam file from yaha")), ToolInput(tag="in_all_samples", input_type=String(optional=True), prefix="--all_samples", doc=InputDocumentation(doc="List of all sample names\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tepid_Refine_V0_1_0().translate("wdl", allow_empty_container=True)

