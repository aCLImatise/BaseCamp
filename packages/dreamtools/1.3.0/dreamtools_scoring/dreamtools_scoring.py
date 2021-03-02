from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Dreamtools_Scoring_V0_1_0 = CommandToolBuilder(tool="dreamtools_scoring", base_command=["dreamtools-scoring"], inputs=[ToolInput(tag="in_challenge", input_type=Int(optional=True), prefix="--challenge", doc=InputDocumentation(doc="alias of the challenge (e.g., D8C1 stands fordream8\nchallenge 1).")), ToolInput(tag="in_sub_challenge", input_type=String(optional=True), prefix="--sub-challenge", doc=InputDocumentation(doc="Name of the data files")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose option.")), ToolInput(tag="in_submission", input_type=Boolean(optional=True), prefix="--submission", doc=InputDocumentation(doc="[FILENAME [FILENAME ...]]\nsubmission/filename to score.")), ToolInput(tag="in_filename", input_type=Boolean(optional=True), prefix="--filename", doc=InputDocumentation(doc="[FILENAME [FILENAME ...]]\nsubmission/filename to score.")), ToolInput(tag="in_gold_standard", input_type=File(optional=True), prefix="--gold-standard", doc=InputDocumentation(doc="a gold standard filename. This may be required in some\nchallenges e.g. D2C3")), ToolInput(tag="in_on_web", input_type=Boolean(optional=True), prefix="--onweb", doc=InputDocumentation(doc="Open synapse project page in a browser")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="Prints general information about the challenge")), ToolInput(tag="in_download_template", input_type=Boolean(optional=True), prefix="--download-template", doc=InputDocumentation(doc="Download template. Templates for challenge may be\ndownloaded using this option. It returns the path to\ntemplate.")), ToolInput(tag="in_download_gold_standard", input_type=Boolean(optional=True), prefix="--download-gold-standard", doc=InputDocumentation(doc="Download a gold standard, which can be used as a\nsubmissions as well. It returns the location of the\nfile.")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dreamtools_Scoring_V0_1_0().translate("wdl", allow_empty_container=True)

