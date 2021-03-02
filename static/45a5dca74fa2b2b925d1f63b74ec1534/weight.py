from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Weight_V0_1_0 = CommandToolBuilder(tool="weight", base_command=["weight"], inputs=[ToolInput(tag="in_use_weighting_scheme", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc=": use BLOSUM weighting scheme at <f> fractional identity")), ToolInput(tag="in_filter_seqs_fractional", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc=": filter out seqs w/ fractional ident > <x> [0-1]")), ToolInput(tag="in_save_weightannotated_alignment", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": save weight-annotated alignment in <outfile>")), ToolInput(tag="in_use_based_scheme", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": use position based weight scheme (Henikoff & Henikoff)")), ToolInput(tag="in_sample_sequences_random", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc=": sample <n> sequences at random into a new alignment")), ToolInput(tag="in_use_scheme_sibbald", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": use Voronoi weight scheme (Sibbald & Argos)")), ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify alignment file format <s>\nallowed formats: SELEX, MSF, Clustal, a2m, PHYLIP")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc=": suppress verbose banner")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Weight_V0_1_0().translate("wdl", allow_empty_container=True)

