from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mdgx_V0_1_0 = CommandToolBuilder(tool="mdgx", base_command=["mdgx"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="-INPUT", doc=InputDocumentation(doc=":   print all command line input options")), ToolInput(tag="in_i_file", input_type=Boolean(optional=True), prefix="-IFILE", doc=InputDocumentation(doc=":   documentation on input file format")), ToolInput(tag="in_files", input_type=Boolean(optional=True), prefix="-FILES", doc=InputDocumentation(doc=":   print descriptions of &files namelist variables (these may also\nbe entered as command line input)")), ToolInput(tag="in_cntrl", input_type=Boolean(optional=True), prefix="-CNTRL", doc=InputDocumentation(doc=":   print descriptions of &cntrl namelist variables (most are similar\nto SANDER variables, but some are unique to mdgx and some SANDER\nvariables are not supported)")), ToolInput(tag="in_ewald", input_type=Boolean(optional=True), prefix="-EWALD", doc=InputDocumentation(doc=":   print &ewald namelist variables")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-FORCE", doc=InputDocumentation(doc=":   print &force namelist variables")), ToolInput(tag="in_fit_q", input_type=Boolean(optional=True), prefix="-FITQ", doc=InputDocumentation(doc=":    print &fitq (charge fitting) namelist variables")), ToolInput(tag="in_param", input_type=Boolean(optional=True), prefix="-PARAM", doc=InputDocumentation(doc=":   print &param (bonded term fitting) namelist variables")), ToolInput(tag="in_ipo_lq", input_type=Boolean(optional=True), prefix="-IPOLQ", doc=InputDocumentation(doc=":   print &ipolq (Implicitly Polarized Charge) namelist variables")), ToolInput(tag="in_configs", input_type=Boolean(optional=True), prefix="-CONFIGS", doc=InputDocumentation(doc=": print &configs (small molecule conformation generation) keywords")), ToolInput(tag="in_ppt_d", input_type=Boolean(optional=True), prefix="-PPTD", doc=InputDocumentation(doc=":    print &pptd (small oligomer molecular dynamics) keywords")), ToolInput(tag="in_attr", input_type=Boolean(optional=True), prefix="-ATTR", doc=InputDocumentation(doc=":    attributions of certain aspects of the code, with references"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdgx_V0_1_0().translate("wdl", allow_empty_container=True)

