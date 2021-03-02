from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Epestfind_V0_1_0 = CommandToolBuilder(tool="_epestfind", base_command=["_epestfind"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [10] Minimal distance between positively\ncharged amino acids. (Integer 2 or more)")), ToolInput(tag="in_order", input_type=Boolean(optional=True), prefix="-order", doc=InputDocumentation(doc="selection  [score] Name of the output file which holds\nthe results of the analysis. Results may be\nsorted by length, position and score.")), ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_mw_data", input_type=Boolean(optional=True), prefix="-mwdata", doc=InputDocumentation(doc="datafile   [Emolwt.dat] Molecular weights data file")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="float      [+5.0] Threshold value to discriminate weak\nfrom potential PEST motifs. Valid PEST\nmotifs are discriminated into 'poor' and\n'potential' motifs depending on this\nthreshold score. By default, the default\nvalue is set to +5.0 based on experimental\ndata. Alterations are not recommended since\nsignificance is a matter of biology, not\nmathematics. (Number from -55.00 to 55.00)")), ToolInput(tag="in_mono", input_type=Boolean(optional=True), prefix="-mono", doc=InputDocumentation(doc="boolean    [N] Use monoisotopic weights")), ToolInput(tag="in_invalid", input_type=Boolean(optional=True), prefix="-invalid", doc=InputDocumentation(doc="boolean    [N] Decide whether invalid PEST motifs\nshould be printed."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Epestfind_V0_1_0().translate("wdl", allow_empty_container=True)

