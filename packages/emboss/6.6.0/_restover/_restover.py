from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Restover_V0_1_0 = CommandToolBuilder(tool="_restover", base_command=["_restover"], inputs=[ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="datafile   Restriction enzyme data file (optional)")), ToolInput(tag="in_m_file", input_type=Boolean(optional=True), prefix="-mfile", doc=InputDocumentation(doc="datafile   [Emethylsites.dat] Restriction enzyme\nmethylation data file")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="-min", doc=InputDocumentation(doc="integer    [1] Minimum cuts per RE (Integer from 1 to\n1000)")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="integer    [2000000000] Maximum cuts per RE (Any\ninteger value)")), ToolInput(tag="in_single", input_type=Boolean(optional=True), prefix="-single", doc=InputDocumentation(doc="boolean    [N] Force single site only cuts")), ToolInput(tag="in_three_prime", input_type=Boolean(optional=True), prefix="-threeprime", doc=InputDocumentation(doc="boolean    [N] Use 3' overhang e.g. BamHI has CTAG as a\n5' overhang, and ApaI has CCGG as 3'\noverhang.")), ToolInput(tag="in_plasmid", input_type=Boolean(optional=True), prefix="-plasmid", doc=InputDocumentation(doc="boolean    [N] Allow circular DNA")), ToolInput(tag="in_methylation", input_type=Boolean(optional=True), prefix="-methylation", doc=InputDocumentation(doc="boolean    [N] If this is set then RE recognition sites\nwill not match methylated bases.")), ToolInput(tag="in_html", input_type=Boolean(optional=True), prefix="-html", doc=InputDocumentation(doc="boolean    [N] Create HTML output")), ToolInput(tag="in_alphabetic", input_type=Boolean(optional=True), prefix="-alphabetic", doc=InputDocumentation(doc="boolean    [N] Sort output alphabetically")), ToolInput(tag="in_fragments", input_type=Boolean(optional=True), prefix="-fragments", doc=InputDocumentation(doc="boolean    [N] Show fragment lengths"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Restover_V0_1_0().translate("wdl", allow_empty_container=True)

