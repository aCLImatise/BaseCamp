from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tcode_V0_1_0 = CommandToolBuilder(tool="tcode", base_command=["tcode"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [200] This is the number of nucleotide bases\nover which the TESTCODE statistic will be\nperformed each time. The window will then\nslide along the sequence, covering the same\nnumber of bases each time. (Integer 200 or\nmore)")), ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="datafile   [Etcode.dat] The default data file is\nEtcode.dat and contains coding probabilities\nfor each base. The probabilities are for\nboth positional and compositional\ninformation.")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="-step", doc=InputDocumentation(doc="integer    [3] The selected window will, by default,\nslide along the nucleotide sequence by three\nbases at a time, retaining the frame\n(although the algorithm is not frame\nsensitive). This may be altered to increase\nor decrease the increment of the slide.\n(Integer 1 or more)")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="-plot", doc=InputDocumentation(doc="toggle     [N] On selection a graph of the sequence (X\naxis) plotted against the coding score (Y\naxis) will be displayed. Sequence above the\ngreen line is coding, that below the red\nline is non-coding."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tcode_V0_1_0().translate("wdl", allow_empty_container=True)

