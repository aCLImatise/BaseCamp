from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Seidr_Aggregate_V0_1_0 = CommandToolBuilder(tool="seidr_aggregate", base_command=["seidr", "aggregate"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in-file", doc=InputDocumentation(doc="Input files")), ToolInput(tag="in_arg_irp_method", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --method ] arg (=irp)            Method to aggregate networks [top1,\ntop2, borda, irp]")), ToolInput(tag="in_keep_directionality_information", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[ --keep ]                         Keep directionality information")), ToolInput(tag="in_arg_number_openmp", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="[ --threads ] arg (=1)             Number of OpenMP threads for parallel")), ToolInput(tag="in_force_overwrite_output", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --force ]                        Force overwrite output file if it")), ToolInput(tag="in_arg_aggregatedsf_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (=aggregated.sf) Output file name")), ToolInput(tag="in_arg_auto_directory", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="[ --tempdir ] arg (=auto)          Directory to store temporary data")), ToolInput(tag="in_sorting", input_type=String(), position=0, doc=InputDocumentation(doc="Common Options:")), ToolInput(tag="in_exists", input_type=String(), position=1, doc=InputDocumentation(doc="-h [ --help ]                         Show this help message"))], outputs=[ToolOutput(tag="out_force_overwrite_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_output", type_hint=File()), doc=OutputDocumentation(doc="[ --force ]                        Force overwrite output file if it")), ToolOutput(tag="out_arg_aggregatedsf_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_aggregatedsf_output", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (=aggregated.sf) Output file name"))], container="quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seidr_Aggregate_V0_1_0().translate("wdl")

