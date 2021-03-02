from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Makdbs_V0_1_0 = CommandToolBuilder(tool="makdbs", base_command=["makdbs"], inputs=[ToolInput(tag="in_ignore_abmiguity_code", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": Ignore abmiguity code")), ToolInput(tag="in_bc", input_type=Boolean(optional=True), prefix="-bC", doc=InputDocumentation(doc=": C = [e]mbl|[g]enbank|[n]brf|[p]rodb|[s]wiss")), ToolInput(tag="in__include_commentsdescriptions", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": include comments/descriptions")), ToolInput(tag="in_d_name", input_type=Boolean(optional=True), prefix="-dName", doc=InputDocumentation(doc=": Body of file names to be created\nIf omitted, default name depending on DB type\nIf Name is omitted, taken from 1st source file name")), ToolInput(tag="in_s_srcdir", input_type=Boolean(optional=True), prefix="-sSrcdir", doc=InputDocumentation(doc=": Directory where source files are located\nIf omitted, srcdir <= {., (null), /usr/local/share/spaln/alndbs}")), ToolInput(tag="in_directory_where_destination_files_are", input_type=Boolean(optional=True), prefix="-pdstdir", doc=InputDocumentation(doc=": Directory where destination files are located\nIf omitted, dstdir = current dir\n*.ent, *.grp, *idx, (*.odr), and *.seq files are made in this directory")), ToolInput(tag="in_dna_protein_sequence", input_type=Boolean(optional=True), prefix="-K", doc=InputDocumentation(doc="[D|P] : DNA or Protein sequence")), ToolInput(tag="in_var_7", input_type=Boolean(optional=True), prefix="-pDstdir", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makdbs_V0_1_0().translate("wdl", allow_empty_container=True)

