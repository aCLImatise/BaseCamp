from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Abyss_Fixmate_Ssq_V0_1_0 = CommandToolBuilder(tool="abyss_fixmate_ssq", base_command=["abyss-fixmate-ssq"], inputs=[ToolInput(tag="in_no_qname", input_type=Boolean(optional=True), prefix="--no-qname", doc=InputDocumentation(doc="set the qname to * [default]")), ToolInput(tag="in_qname", input_type=Boolean(optional=True), prefix="--qname", doc=InputDocumentation(doc="do not alter the qname")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="print all alignments")), ToolInput(tag="in_diff", input_type=Boolean(optional=True), prefix="--diff", doc=InputDocumentation(doc="print alignments that align to different\ncontigs [default]")), ToolInput(tag="in_min_align", input_type=Int(optional=True), prefix="--min-align", doc=InputDocumentation(doc="the minimal alignment size [1]")), ToolInput(tag="in_same", input_type=File(optional=True), prefix="--same", doc=InputDocumentation(doc="write properly-paired reads to this file")), ToolInput(tag="in_hist", input_type=File(optional=True), prefix="--hist", doc=InputDocumentation(doc="write the fragment size histogram to FILE")), ToolInput(tag="in_cov", input_type=File(optional=True), prefix="--cov", doc=InputDocumentation(doc="write the physical coverage to FILE")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_db", input_type=File(optional=True), prefix="--db", doc=InputDocumentation(doc="specify path of database repository in FILE")), ToolInput(tag="in_library", input_type=String(optional=True), prefix="--library", doc=InputDocumentation(doc="specify library NAME for sqlite")), ToolInput(tag="in_strain", input_type=String(optional=True), prefix="--strain", doc=InputDocumentation(doc="specify strain NAME for sqlite")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="specify species NAME for sqlite")), ToolInput(tag="in_abyss_fix_mate", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Fixmate_Ssq_V0_1_0().translate("wdl", allow_empty_container=True)

