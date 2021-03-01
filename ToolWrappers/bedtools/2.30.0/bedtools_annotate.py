from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Bedtools_Annotate_V0_1_0 = CommandToolBuilder(tool="bedtools_annotate", base_command=["bedtools", "annotate"], inputs=[ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="-names", doc=InputDocumentation(doc="A list of names (one / file) to describe each file in -i.\nThese names will be printed as a header line.")), ToolInput(tag="in_counts", input_type=File(optional=True), prefix="-counts", doc=InputDocumentation(doc="the count of features in each file that overlap -i.\n- Default is to report the fraction of -i covered by each file.")), ToolInput(tag="in_both", input_type=Boolean(optional=True), prefix="-both", doc=InputDocumentation(doc="Report the counts followed by the % coverage.\n- Default is to report the fraction of -i covered by each file.")), ToolInput(tag="in_require_same_strandedness", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Require same strandedness.  That is, only counts overlaps\non the _same_ strand.\n- By default, overlaps are counted without respect to strand.")), ToolInput(tag="in_require_different_strandedness", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Require different strandedness.  That is, only count overlaps\non the _opposite_ strand.\n- By default, overlaps are counted without respect to strand.\n")), ToolInput(tag="in_files", input_type=File(optional=True), prefix="-files", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two_dot_dotfile_n", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Annotate_V0_1_0().translate("wdl")

