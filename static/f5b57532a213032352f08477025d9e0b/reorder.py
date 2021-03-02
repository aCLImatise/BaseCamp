from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Reorder_V0_1_0 = CommandToolBuilder(tool="reorder", base_command=["reorder"], inputs=[ToolInput(tag="in_number_suboptimals_reorder", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": (req) number of suboptimals to reorder")), ToolInput(tag="in_use_parameters_grammar", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc=": Use parameters, grammar and scoring specified in model <file>")), ToolInput(tag="in_use_string_defaults", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc=": Use grammar <string>, defaults to NUS; ignored if model file specified")), ToolInput(tag="in_print_parameters_model", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": print out parameters of model")), ToolInput(tag="in_print_parse_trees", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": print all parse trees (lots!)")), ToolInput(tag="in_report_suboptimals_table", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": report all suboptimals table")), ToolInput(tag="in_report_things_better", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": report on things better than CYK")), ToolInput(tag="in_report_tracebacks_cyk", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": report tracebacks in CYK report (ignored if not with -c)")), ToolInput(tag="in__debugging_output", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": debugging output")), ToolInput(tag="in__verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose output")), ToolInput(tag="in_debugging_fill_matrix", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": debugging, print fill matrix from cyk")), ToolInput(tag="in_print_real_predicted", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": print real with predicted structure")), ToolInput(tag="in_print_predicted_structures", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": print predicted structures in stockholm format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reorder_V0_1_0().translate("wdl", allow_empty_container=True)

