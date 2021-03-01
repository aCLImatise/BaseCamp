from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pre_Star_Py_V0_1_0 = CommandToolBuilder(tool="pre_STAR.py", base_command=["pre_STAR.py"], inputs=[ToolInput(tag="in_list", input_type=File(optional=True), prefix="--list", doc=InputDocumentation(doc="sampleName tab-delimiter path/to/fileName")), ToolInput(tag="in_an_no", input_type=File(optional=True), prefix="--anno", doc=InputDocumentation(doc="specifies the path to the annotation (bed 6 file of\ngenebounderies with info\nprotein_coding;ENSG00000237683.5;AL627309.1 in column\nfour.)")), ToolInput(tag="in_intersect_bed", input_type=File(optional=True), prefix="--intersectBed", doc=InputDocumentation(doc="specifies the path to the intersectBed binary")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="specifies the path to ouput directory (tmp files are\nalso created in this directory, they are removed by rm\n*.rm) (default is '.')\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pre_Star_Py_V0_1_0().translate("wdl", allow_empty_container=True)

