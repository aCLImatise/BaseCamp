from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Compare_Genomes_Lastal_Py_V0_1_0 = CommandToolBuilder(tool="compare_genomes_lastal.py", base_command=["compare_genomes_lastal.py"], inputs=[ToolInput(tag="in_save_pickled_results", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Save pickled results in this file (None).")), ToolInput(tag="in_parameters_passed_lastal", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Parameters passed to lastal in the <arg>:value,... format\n(a:1,b:1).")), ToolInput(tag="in_save_details_tabseparatedfile", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Save details of lastal alignment in this tab-separated\nfile (None).")), ToolInput(tag="in_filter_best_alignment", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Do *not* filter for best alignment per query.")), ToolInput(tag="in_report_plot_none", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report with alignment details plot (None).")), ToolInput(tag="in_reference_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Reference fasta.")), ToolInput(tag="in_target_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Target fasta."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Genomes_Lastal_Py_V0_1_0().translate("wdl")

