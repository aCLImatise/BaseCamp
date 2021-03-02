from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Emowse_V0_1_0 = CommandToolBuilder(tool="emowse", base_command=["emowse"], inputs=[ToolInput(tag="in_weight", input_type=Boolean(optional=True), prefix="-weight", doc=InputDocumentation(doc="integer    [0] Whole sequence molwt (Any integer value)")), ToolInput(tag="in_mono", input_type=Boolean(optional=True), prefix="-mono", doc=InputDocumentation(doc="boolean    [N] Use monoisotopic weights")), ToolInput(tag="in_mw_data", input_type=Boolean(optional=True), prefix="-mwdata", doc=InputDocumentation(doc="datafile   [Emolwt.dat] Molecular weights data file")), ToolInput(tag="in_frequencies", input_type=Boolean(optional=True), prefix="-frequencies", doc=InputDocumentation(doc="datafile   [Efreqs.dat] Amino acid frequencies data")), ToolInput(tag="in_pc_range", input_type=Boolean(optional=True), prefix="-pcrange", doc=InputDocumentation(doc="integer    [25] Allowed whole sequence weight\nvariability (Integer from 0 to 75)")), ToolInput(tag="in_tolerance", input_type=Boolean(optional=True), prefix="-tolerance", doc=InputDocumentation(doc="float      [0.1] Tolerance (Number from 0.100 to 1.000)")), ToolInput(tag="in_partials", input_type=Boolean(optional=True), prefix="-partials", doc=InputDocumentation(doc="float      [0.4] Partials factor (Number from 0.100 to\n1.000)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-enzyme             menu       [1] Enzyme or reagent (Values: 1 (Trypsin);"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emowse_V0_1_0().translate("wdl", allow_empty_container=True)

