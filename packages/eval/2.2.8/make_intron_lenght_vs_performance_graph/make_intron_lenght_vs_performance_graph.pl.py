from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Make_Intron_Lenght_Vs_Performance_Graph_Pl_V0_1_0 = CommandToolBuilder(tool="make_intron_lenght_vs_performance_graph.pl", base_command=["make_intron_lenght_vs_performance_graph.pl"], inputs=[ToolInput(tag="in_sets_minimum_bin", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=": Sets the minimum bin start [default: min intron length];")), ToolInput(tag="in_sets_maximum_end", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc=": Sets the maximum bin end [default: max intron length];")), ToolInput(tag="in_sets_size_used", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc=": Sets the bin size [default: 1/10 length range]\nCannot be used with -B")), ToolInput(tag="in_sets_number_used", input_type=Int(optional=True), prefix="-B", doc=InputDocumentation(doc=": Sets the number of bins [default: 10]\nCannot be used with -b")), ToolInput(tag="in_input_files_gtf", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": Input files are gtf not lists")), ToolInput(tag="in_quick_load_file", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Quick load the gtf file.  Do not check them for errors.")), ToolInput(tag="in__verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Verbose mode")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Intron_Lenght_Vs_Performance_Graph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

