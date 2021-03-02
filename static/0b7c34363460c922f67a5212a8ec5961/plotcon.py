from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Plotcon_V0_1_0 = CommandToolBuilder(tool="plotcon", base_command=["plotcon"], inputs=[ToolInput(tag="in_winsize", input_type=Boolean(optional=True), prefix="-winsize", doc=InputDocumentation(doc="integer    [4] Number of columns to average alignment\nquality over. The larger this value is, the\nsmoother the plot will be. (Any integer\nvalue)")), ToolInput(tag="in_graph", input_type=Boolean(optional=True), prefix="-graph", doc=InputDocumentation(doc="xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)")), ToolInput(tag="in_score_file", input_type=Boolean(optional=True), prefix="-scorefile", doc=InputDocumentation(doc="matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plotcon_V0_1_0().translate("wdl", allow_empty_container=True)

