from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Abyss_Fac_V0_1_0 = CommandToolBuilder(tool="abyss_fac", base_command=["abyss-fac"], inputs=[ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="--genome-size", doc=InputDocumentation(doc="expected genome size. Used to calculate NG50\nand associated stats [disabled]")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="ignore sequences shorter than N bp [500]")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="use S for the field delimiter [\t]")), ToolInput(tag="in_jira", input_type=Boolean(optional=True), prefix="--jira", doc=InputDocumentation(doc="output JIRA format")), ToolInput(tag="in_mmd", input_type=Boolean(optional=True), prefix="--mmd", doc=InputDocumentation(doc="output MultiMarkdown format")), ToolInput(tag="in_chastity", input_type=Boolean(optional=True), prefix="--chastity", doc=InputDocumentation(doc="discard unchaste sequences [default]")), ToolInput(tag="in_no_chastity", input_type=Boolean(optional=True), prefix="--no-chastity", doc=InputDocumentation(doc="do not discard unchaste sequences")), ToolInput(tag="in_trim_masked", input_type=Boolean(optional=True), prefix="--trim-masked", doc=InputDocumentation(doc="trim masked bases from the end")), ToolInput(tag="in_no_trim_masked", input_type=Boolean(optional=True), prefix="--no-trim-masked", doc=InputDocumentation(doc="do not trim masked bases from the ends\nof sequences [default]")), ToolInput(tag="in_count_am_big", input_type=Boolean(optional=True), prefix="--count-ambig", doc=InputDocumentation(doc="count ambiguity codes in sequences")), ToolInput(tag="in_no_count_am_big", input_type=Boolean(optional=True), prefix="--no-count-ambig", doc=InputDocumentation(doc="do not count ambiguity codes in sequences [default]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output"))], outputs=[], container="quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Fac_V0_1_0().translate("wdl")

