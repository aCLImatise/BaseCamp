from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Mp3Treesim_V0_1_0 = CommandToolBuilder(tool="mp3treesim", base_command=["mp3treesim"], inputs=[ToolInput(tag="in_run_mptreesim_intersection", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Run MP3-treesim in Intersection mode.")), ToolInput(tag="in_run_mptreesim_mode", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Run MP3-treesim in Union mode.")), ToolInput(tag="in_run_mptreesim_geometric", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Run MP3-treesim in Geometric mode.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to be used in computation.")), ToolInput(tag="in_labeled_only", input_type=Boolean(optional=True), prefix="--labeled-only", doc=InputDocumentation(doc="Ingore nodes without 'label' attribute. The trees will\nbe interpred as partially-label trees.")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="--exclude", doc=InputDocumentation(doc="[EXCLUDE [EXCLUDE ...]]\nString(s) of comma separated labels to exclude from\ncomputation. If only one string is provided the labels\nwill be excluded from both trees. If two strings are\nprovided they will be excluded from the respective\ntree. E.g.: --exclude 'A,D,E' will exclude labels from\nboth trees; --exclude 'A,B' 'C,F' will exclude A,B\nfrom Tree 1 and C,F from Tree 2; --exclude '' 'C' will\nexclude and C from Tree 2 and nothing from Tree 1\n")), ToolInput(tag="in_tree", input_type=String(), position=0, doc=InputDocumentation(doc="Paths to the trees"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mp3Treesim_V0_1_0().translate("wdl", allow_empty_container=True)

