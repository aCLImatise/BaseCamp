from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float

Determineunjoinablepacbiosubmegas_Perl_V0_1_0 = CommandToolBuilder(tool="determineUnjoinablePacbioSubmegas.perl", base_command=["determineUnjoinablePacbioSubmegas.perl"], inputs=[ToolInput(tag="in_inputfile_name_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="(inputFile is the name of the file with k-unitig pairs and gap sizes)")), ToolInput(tag="in_min_range_radius", input_type=Int(optional=True), prefix="--min-range-radius", doc=InputDocumentation(doc="(int >= 0, specifies dist from center that gap sizes are accepted) (default: 10)")), ToolInput(tag="in_min_range_proportion", input_type=Float(optional=True), prefix="--min-range-proportion", doc=InputDocumentation(doc="(0<float<1, specifies proportion of center gap size that we allow for accepted gap sizes) (default: .1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Determineunjoinablepacbiosubmegas_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

