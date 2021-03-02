from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Hggoldgapgl_V0_1_0 = CommandToolBuilder(tool="hgGoldGapGl", base_command=["hgGoldGapGl"], inputs=[ToolInput(tag="in_no_gl", input_type=Boolean(optional=True), prefix="-noGl", doc=InputDocumentation(doc="- don't do gl bits")), ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="-chrom", doc=InputDocumentation(doc="- just do a single chromosome.  Don't delete old tables.")), ToolInput(tag="in_chrom_lst", input_type=Int(optional=True), prefix="-chromLst", doc=InputDocumentation(doc="- chromosomes subdirs are named in chrom.lst (1, 2, ...)")), ToolInput(tag="in_no_load", input_type=Boolean(optional=True), prefix="-noLoad", doc=InputDocumentation(doc="- do not load tables, leave SQL files instead.")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="- n==2 brief information and SQL table create statements\n- n==3 show all gaps")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gs_dir", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_oo_subdir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hggoldgapgl_V0_1_0().translate("wdl", allow_empty_container=True)

