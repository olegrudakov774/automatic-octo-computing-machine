        case .selectElement(let element):
            newState.selectedElement = element
            
        case .gesture(let action):
            newState = gestureReducer.reduce(newState, action)
            
        case .removeSelectedPoints:
            newState.selectedPointsIDs.removeAll()
            
        case .switchEditMode:
            newState.editMode.next()
            
        case .toggleGrid:
            newState.isShowingGrid.toggle()
