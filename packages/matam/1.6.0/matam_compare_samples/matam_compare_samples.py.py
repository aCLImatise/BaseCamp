from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Matam_Compare_Samples_Py_V0_1_0 = CommandToolBuilder(tool="matam_compare_samples.py", base_command=["matam_compare_samples.py"], inputs=[ToolInput(tag="in_samples_file", input_type=File(optional=True), prefix="--samples_file", doc=InputDocumentation(doc="A tabulated file with one sample by row. The first\ncolumn contains the sample id (must be unique) The\nsecond column contains the fasta path. The abundances\nmust be present into this file. The third, the rdp\npath. Paths can be absolute or relative to the current\nworking directory.")), ToolInput(tag="in_ouput_contingency_table", input_type=String(optional=True), prefix="--ouput_contingency_table", doc=InputDocumentation(doc="Output a table with the abundance for each sequence")), ToolInput(tag="in_output_table_taxonomy", input_type=String(optional=True), prefix="--ouput_comparaison_table", doc=InputDocumentation(doc="Output a comparaison table (taxonomy vs samples)\n")), ToolInput(tag="in_script_let_compare", input_type=String(), position=0, doc=InputDocumentation(doc="This script let you compare two or more samples coming from MATAM -- v1.5.1 or"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matam_Compare_Samples_Py_V0_1_0().translate("wdl", allow_empty_container=True)

