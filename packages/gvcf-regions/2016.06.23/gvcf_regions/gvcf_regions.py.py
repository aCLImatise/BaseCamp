from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String, Int

Gvcf_Regions_Py_V0_1_0 = CommandToolBuilder(tool="gvcf_regions.py", base_command=["gvcf_regions.py"], inputs=[ToolInput(tag="in_unreported_is_called", input_type=Boolean(optional=True), prefix="--unreported_is_called", doc=InputDocumentation(doc="use this flag to treat unreported sites as called")), ToolInput(tag="in_ignore_phrases", input_type=Array(t=String(), optional=True), prefix="--ignore_phrases", doc=InputDocumentation(doc="list of phrases considered as discarded, e.g., CNV,\nME. A line that contains any of the ignore phrases is\ndiscarded.")), ToolInput(tag="in_min_gq", input_type=String(optional=True), prefix="--min_GQ", doc=InputDocumentation(doc="minimum GQ (Genotype Quality) considered as called")), ToolInput(tag="in_min_qual", input_type=Int(optional=True), prefix="--min_QUAL", doc=InputDocumentation(doc="minimum QUAL considered as called")), ToolInput(tag="in_pass_phrases", input_type=Array(t=String(), optional=True), prefix="--pass_phrases", doc=InputDocumentation(doc="list of phrases considered as called, e.g., PASS,\nREFCALL. A line must contain any of the pass phrases\nto be considered as called.")), ToolInput(tag="in_gvc_f_type", input_type=String(optional=True), prefix="--gvcf_type", doc=InputDocumentation(doc="type of gvcf output. [unreported_is_called,\nignore_phrases, min_GQ, min_QUAL, pass_phrases]\npresets: complete_genomics: [True, ['CNV', 'INS:ME'],\nNone, None, ['PASS']]. freebayes: [False, None, None,\nNone, ['PASS']]. gatk: [False, None, 5, None, None].\nplatypus: [False, None, None, None, ['PASS',\n'REFCALL']].\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gvcf_Regions_Py_V0_1_0().translate("wdl", allow_empty_container=True)

