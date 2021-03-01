from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Tepid_Discover_V0_1_0 = CommandToolBuilder(tool="tepid_discover", base_command=["tepid-discover"], inputs=[ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep all intermediate files")), ToolInput(tag="in_deletions", input_type=Boolean(optional=True), prefix="--deletions", doc=InputDocumentation(doc="find deletions only")), ToolInput(tag="in_insertions", input_type=Boolean(optional=True), prefix="--insertions", doc=InputDocumentation(doc="find insertions only")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc="Report high-confidence variants only")), ToolInput(tag="in_mask", input_type=File(optional=True), prefix="--mask", doc=InputDocumentation(doc="Mask chromosomes in comma separated list or file")), ToolInput(tag="in_discordant", input_type=File(optional=True), prefix="--discordant", doc=InputDocumentation(doc="Supply discordant reads bam file")), ToolInput(tag="in_proc", input_type=Int(optional=True), prefix="--proc", doc=InputDocumentation(doc="number of processors")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="sample name")), ToolInput(tag="in_conc", input_type=File(optional=True), prefix="--conc", doc=InputDocumentation(doc="bam file from bowtie2")), ToolInput(tag="in_split", input_type=File(optional=True), prefix="--split", doc=InputDocumentation(doc="split reads bam file from yaha")), ToolInput(tag="in_te", input_type=String(optional=True), prefix="--te", doc=InputDocumentation(doc="TE annotation bedfile")), ToolInput(tag="in_se", input_type=Boolean(optional=True), prefix="--se", doc=InputDocumentation(doc="Run in single-end mode"))], outputs=[], container="quay.io/biocontainers/tepid:0.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tepid_Discover_V0_1_0().translate("wdl")

